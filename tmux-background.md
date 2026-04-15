# Running Claude Code in the Background with tmux

## Prerequisites

Ensure `tmux` is installed:
```bash
apt install tmux   # Debian/Ubuntu
```

## Steps

1. **Start a new tmux session:**
   ```bash
   tmux new -s claude
   ```

2. **Start Claude Code inside the tmux session:**
   ```bash
   claude
   ```

3. **Connect Remote Control:**
   Once Claude has started, run the `/rc` command (Remote Control), then:
   - Choose **Disconnect** if it is already connected
   - Run `/rc` again to reconnect fresh

4. **Detach from the tmux session (put it in the background):**
   Press `Ctrl-B`, then `D`

   The Claude session keeps running in the background.

5. **Reattach to the session later:**
   ```bash
   tmux attach -t claude
   ```

6. **List all active tmux sessions:**
   ```bash
   tmux ls
   ```

## Notes

- Do **not** use `Ctrl-Z` + `bg` — this will kill the Claude session.
- Closing your terminal is safe as long as you are inside a tmux session.
- To cleanly exit the tmux session when done, type `exit` inside Claude, then `exit` again in the shell.
