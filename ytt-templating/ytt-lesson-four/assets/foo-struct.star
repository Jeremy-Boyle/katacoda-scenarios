load("@ytt:assert", "assert")
load("@ytt:data", "data")
load("@ytt:struct", "struct")

#! Function: check_values
#! Brief: Iterates across an entire schema and performs error checking on it
#! Params: values  -   An iterable value
#! Returns: Returns nothing on success, raises assert error on fail
def check_values(values):
  for key, value in values.items():
    if type(value) == None:
      assert.fail("Error: Key {} has type of {}".format(key, type(value)))
    elif type(value) == type(list()):
      for item in value:
        check_values(item)
      end
    elif type(value) == type(dict()):
      check_values(value)
    elif type(value) == type(80):
        _is_port_secure(key, value)
    end
  end
end

def _is_port_secure(key, value):
#! TODO: If the only_secure boolean is set to True, assert.fail is a port is not 443
end

foo_struct = struct.make(
    check_values=check_values
)
