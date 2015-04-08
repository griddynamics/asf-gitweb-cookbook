gitweb-cookbook
===============

Install and configure Gitweb with Apache

Depends
-------
No dependencies

Usage
-----
#### gitweb::default

Just include `gitweb` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[gitweb]"
  ]
}
```
