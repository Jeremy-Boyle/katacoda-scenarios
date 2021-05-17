### Scenario - Structs
You have been tasked with creating a test suite that will prevent insecure ports from being used for a given Service (`foo`). Edit the `foo-struct.star` file according to the comments. The method to iterate through your data values has been provided. Finally, test you logic in your `_is_port_secure` function by running `ytt` on this directory with different values for `secure_port` and by enabling/disabling the `only_secure` flag as well.

Good Luck!

### Walkthrough
1. Edit the `foo-struct.star` file according to the comments.

2. Run `ytt -f .` to view your generated manifest. You have succeeded if your `ytt` command fails with this message when using any port other than 443 while the `only_secure` flag is set to `True`:

```bash
ytt: Error: Evaluating starlark template:
- assert.fail: fail: Error: Port XXXX is not secure!
    in _is_port_secure
      28 |       assert.fail("Error: Port {} is not secure!".format(value))
    in check_values
      20 |         _is_port_secure(key, value)
    in check_values
      18 |       check_values(value)
    in <toplevel>
      9 | foo_struct.check_values(struct.decode(data.values))
```

```
ytt -f .
```{{execute}}
