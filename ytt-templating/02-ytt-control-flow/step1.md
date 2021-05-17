### Scenario - Control Flow
You have been tasked with generating a dynamic manifest that contains a list of daily activities. These activities include standard workday tasks and off-time hobbies. Use the boolean values (`true`/`false`) to determine whether you should be doing:
- Work tasks
- Hobbies at home
- Both sets of activities while working from home
- None of these activities while not working and not at home

Good Luck!

### Walkthrough
1. Edit the `foo-values.yaml` and `foo-template.yaml` files according to the comments.

2. Delete the comments to clean up the files.

3. Run `ytt -f .` to view your generated manifest. You have succeeded if you can generate 4 unique manifests by using different combinations of `true` and `false` values in `foo-values.yaml`.
```
ytt -f .
```{{execute}}
