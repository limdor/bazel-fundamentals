java_binary(
    name = "HelloWorld",
    srcs = ["HelloWorld.java"],
    main_class = "com.example.HelloWorld",
    deps = [":MyLib"],
)

java_library(
    name = "MyLib",
    srcs = ["MyLib.java"],
)

java_test(
    name = "test",
    srcs = ["MyLibTest.java"],
    test_class = "com.example.MyLibTest",
    deps = [
        ":MyLib",
        "@maven//:junit_junit",
    ],
)
