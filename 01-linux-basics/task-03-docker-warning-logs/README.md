# Task 3: Fetch Warning Logs from Docker on August 2

## 🎯 Objective

- Use `journalctl` to fetch the **last 10 warning logs** related to the Docker service.
- Filter logs specifically for the date **August 2**.
- Store the output in a file for future reference.

---

## 🔧 Tools Used

- `journalctl`: For querying systemd logs
- `grep`: For filtering
- `head`: To get the last 10 lines

---

## 📝 Notes

- This task assumes your system uses **systemd** and has access to Docker logs via `journalctl`.
- If you're running inside a container (like Ubuntu inside Docker), you might see an error like:
