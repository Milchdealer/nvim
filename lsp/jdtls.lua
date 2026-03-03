return {
  cmd = { "jdtls" },
  filetypes = { "java" },
  root_markers = { "pom.xml", "build.gradle", ".classpath", ".git" },
  single_file_support = true,
  settings = {
    java = {
      import = {
        gradle = { enabled = true },
        maven = { enabled = true },
        -- Disable build server protocol (causes "failed to connect" in Bazel projects)
        buildServer = { enabled = false },
      },
    },
  },
}
