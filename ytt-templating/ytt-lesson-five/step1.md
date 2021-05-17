### Scenario - Structs

You have been tasked with creating a test suite that will prevent insecure ports from being used for a given Service (foo). Edit the foo-struct.star file according to the comments. The method to iterate through your data values has been provided. Finally, test you logic in your _is_port_secure function by running ytt on this directory with different values for secure_port and by enabling/disabling the only_secure flag as well.
Good Luck!

### Acceptance Criteria


Run `ytt -f .` to successfully generate a manifest.

```
ytt -f .
```{{execute}}
