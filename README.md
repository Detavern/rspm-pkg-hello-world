# RSPM Package Example: hello-world

## installation

- install `rspm` first
- open a RouterOS terminal and install package by command

```
[[$GetFunc "rspm.install"] URL="https://raw.githubusercontent.com/Detavern/rspm-pkg-hello-world/master/hello-world.rsc"];
```

## invoke functions in installed package
```
[[$GetFunc "rspm.hello-world.helloWorld"]];
[[$GetFunc "rspm.hello-world.helloWorld"] Name="Alice"];
```
