### Scenario - Overlay
You have been tasked with transferring a soldier's file from one database to another. A coworker made some mistakes when entering that soldier's information into the original database. You do not have access to edit the original file. Use YTT overlays to edit the original file before sending it on to be used.

Good Luck!

### Walkthrough
1. Edit the `foo-overlay.yaml` file according to the comments.

2. Run `ytt -f .` to view your generated manifest. You have succeeded if your generated manifest looks like this:

```yaml
kind: Soldier
metadata:
  name: Joe Snuffy
spec:
  hobbies:
  - Knitting
  - Skydiving
  - Fishing
  relatives:
  - name: Jane Snuffy
    relation: wife
  - name: Joe Snuffy Jr.
    relation: son
```

```
ytt -f .
```{{execute}}
