return {
  -- spec の name は lze が require の解決に使う名前なので、プラグインの正式名を指定する
  "babel.nvim",
  -- nixpkgs 外の flake input 経由で取得したプラグインは
  -- input 名の "plugins-" を除いた名前（babel-nvim）が Nix store 上の名前になる
  -- :lua print(vim.inspect(nixInfo(nil, "plugins", "lazy"))) で確認可能
  -- Nix の attribute 名にはドットが使えないため、
  -- "babel.nvim" のような名前は "babel-nvim" に変換される
  -- auto_enable はこの Nix store 上の名前で探しに行くので babel-nvim を指定する
  -- :lua print(vim.inspect(vim.api.nvim_list_runtime_paths())) でランタイムパスに追加されているのが確認できる
  auto_enable = "babel-nvim",
  event = "DeferredUIEnter",  -- VeryLazy の相当
  -- デフォルトの load は vim.cmd.packadd(name) を呼ぶが、
  -- name は spec の最初の文字列 "babel.nvim" なので packdir に見つからずエラーになる
  -- Nix store 上の実際の名前 "babel-nvim" を明示的に指定して上書きする
  load = function(_)
    vim.cmd.packadd("babel-nvim")
  end,
  after = function(_)
    require("babel").setup({
      target = "ja",
    })
  end,
}
