"""
Load all Java dependencies using Maven
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")

def load_java_dependencies():
    maven_install(
        artifacts = [
            "junit:junit:4.12",
        ],
        repositories = [
            "https://maven.google.com",
            "https://repo1.maven.org/maven2",
        ],
    )
