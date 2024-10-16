local config = {
  cmd = { vim.fn.expand '~/.local/share/nvim/mason/bin/jdtls' },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),

  -- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
  init_options = {
    bundles = { vim.fn.glob('/home/sami6720/.local/lib/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar', 1) },
  },

  settings = {
    java = {
      project = {
        referencedLibraries = {
          '/home/sami6720/myprojs/comp_fall2024/chapter5/lib/junit-4.13.2.jar',
          '/home/sami6720/myprojs/comp_fall2024/chapter5/lib/hamcrest-core-1.3.jar',
        },
      },
    },
  },
}
require('jdtls').start_or_attach(config)
