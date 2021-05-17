load("@ytt:data", "data")
load("@ytt:struct", "struct")
load("test-suite.star", "testing")

testing.check_values(struct.decode(data.values))