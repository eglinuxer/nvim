return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " _____      _ _                  ",
        "| ____|__ _| (_)_ __  _   ___  __",
        "|  _| / _` | | | '_ \\| | | \\ \\/ /",
        "| |__| (_| | | | | | | |_| |>  < ",
        "|_____\\__, |_|_|_| |_|\\__,_/_/\\_\\",
        "    _ |___/     _____ __  __     ",
        "   | \\ | \\ \\   / /_ _|  \\/  |    ",
        "   |  \\| |\\ \\ / / | || |\\/| |    ",
        "   | |\\  | \\ V /  | || |  | |    ",
        "   |_| \\_|  \\_/  |___|_|  |_|    ",
      }
      return opts
    end,
  },
}
