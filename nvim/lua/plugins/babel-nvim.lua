return {
  -- specのnameはlzeがrequireの解決に使う名前なので、プラグインの正式名を指定する
  "babel.nvim",
  -- nixpkgs外のflake input経由で取得したプラグインは、input名の "plugins-" を除いた名前（babel-nvim）がNix store上の名前になる
  -- :lua print(vim.inspect(nixInfo(nil, "plugins", "lazy"))) で確認可能
  -- Nixのattribute名にはドットが使えないため、"babel.nvim" のような名前は "babel-nvim" に変換される
  -- auto_enableはこのNix store上の名前で探しに行くので "babel-nvim" を指定する
  -- :lua print(vim.inspect(vim.api.nvim_list_runtime_paths())) でランタイムパスに追加されているか確認可能
  auto_enable = "babel-nvim",
  event = "DeferredUIEnter",
  -- デフォルトのloadはvim.cmd.packadd(name)を呼ぶ、nameはspecの最初の文字列 "babel.nvim" なので、packdirに見つからずエラーになる
  -- Nix store上の実際の名前 "babel-nvim" を明示的に指定して上書きする
  load = function(_)
    vim.cmd.packadd("babel-nvim")
  end,
  after = function(_)
    require("babel").setup({
      target = "ja",
    })
  end,
}
