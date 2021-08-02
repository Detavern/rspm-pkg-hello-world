:local metaInfo {
    # package name: the name when invoked by `GetFunc`
    "name"="rspm.hello-world";
    "author"="rspm";
    # version number: will be compared when upgrading
    "version"="1.0.0";
    "description"="rspm package example: hello-world";
    # the file url: will be used when upgrading
    "url"="https://raw.githubusercontent.com/Detavern/rspm-pkg-hello-world/master/hello-world.rsc";
};


# $helloWorld
# [[$GetFunc "rspm.hello-world.helloWorld"] Name="Alice"];
# In order to avoid using of built-in keywords, UpperCamelCase is strongly recommended for the style of keyword arguments.
# kwargs: Name=<str>    substitution of string "world"
:local helloWorld do={
    :global IsNothing;
    :if ([$IsNothing $Name]) do={
        :put "Hello world!";
    } else {
        :put ("Hello $Name!");
    }
}


# $helloWorldB
# You MUST use a keyword argument when passing arguments into functions.
# the position argument won't work, this is an example.
# [[$GetFunc "rspm.hello-world.helloWorldB"] "Alice"];
# args: <str>    substitution of string "world"
:local helloWorldB do={
    :global IsNothing;
    :if ([$IsNothing $1]) do={
        :put "Hello world!";
    } else {
        :put ("Hello $Name!");
    }
}


:local package {
    "metaInfo"=$metaInfo;
    "helloWorld"=$helloWorld;
    "helloWorldB"=$helloWorldB;
}
:return $package;
