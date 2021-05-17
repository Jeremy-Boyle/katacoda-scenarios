load("@ytt:data", "data")
load("@ytt:struct", "struct")

#! This line loads the struct we created in our `foo-struct.yaml` file.
load("foo-struct.star", "foo_struct")

#! This line takes in all of our values from the `00-values.yaml` file and serializes them
#! It then passes that serialized object to our "check_values" method in `foo-struct.star`.
foo_struct.check_values(struct.decode(data.values))
