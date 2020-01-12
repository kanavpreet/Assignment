import json
my_list = {}
with open("sample.json", "r") as p:
    my_list=json.load(p)

my_list = {k: v for k, v in my_list.items() if v["healthchk_enabled"] == "true"}
my_list = sorted(my_list, key=lambda x: (my_list[x]['priority']))
for x in my_list:
    print(x)
