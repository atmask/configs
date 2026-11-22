// Forks the Claude Code conversation in the focused terminal into a new split
// beside it (claude --resume <id> --fork-session), like the TUI's fork-claude.sh.
// Opened by a key (`mod.open:fork-claude`); does its work and closes itself.
// Claude writes ~/.claude/sessions/<pid>.json for each running session, so the
// terminal's foreground pid leads to its session id and project folder.

import { View, div } from "gpui-kit";
import { props, closeOverlay, run, focused, hc, home, readTextFile, notify } from "herdr";

const fail = (body) => notify({ title: "Fork Claude", body, level: "warning" });

async function fork(target) {
  if (!target?.terminal) return fail("No focused terminal");
  const got = await hc(["get", target.terminal, "--json"]);
  const term = got.code === 0 ? JSON.parse(got.stdout) : null;
  if (term?.status?.app !== "claude-code" || !term.foreground?.pid) {
    return fail("Focused terminal is not a Claude session");
  }
  const text = await readTextFile(`${home()}/.claude/sessions/${term.foreground.pid}.json`);
  const session = text ? JSON.parse(text) : null;
  if (!session?.sessionId) return fail(`No Claude session found for pid ${term.foreground.pid}`);
  run("terminal.open", {
    argv: ["claude", "--resume", session.sessionId, "--fork-session"],
    folder: session.cwd ?? term.cwd ?? home(),
    place: "right",
  });
}

export default class ForkClaude extends View {
  init(_props, cx) {
    const target = focused();
    cx.spawn(async () => {
      try {
        await fork(target);
      } catch (e) {
        fail(String(e));
      } finally {
        // Closing ends this copy, so only once the fork has been started.
        const overlay = props()?.overlay;
        if (overlay) closeOverlay(overlay);
      }
    });
  }

  render() {
    return div();
  }
}
