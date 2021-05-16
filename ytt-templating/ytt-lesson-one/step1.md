### Scenario
You have been tasked with adding, changing and removing some values in a templated manifest (`foo-template.yaml`). Use YTT to edit the values file (`foo-values.yaml`) and then generate a manifest using the `ytt` CLI.

Good Luck!

### Walkthrough
1. Edit the `foo-values.yaml` and `foo-template.yaml` files according to the comments.

2. Delete the comments to clean up the files.

3. Run `ytt -f .` to view your generated manifest.
```
ytt -f .
```{{execute}}

You have succeeded if your generated manifest looks like this:
```yaml
groceries:
  bread: 1
  milk: 2
  eggs: 3
```
