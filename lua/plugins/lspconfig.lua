return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        update_on_insert = true,
      },
      format = { timeout_ms = 10000 },
      servers = {
        -- aiken = { mason = false },
        -- als = { mason = false },
        -- anakin_language_server = { mason = false },
        -- angularls = { mason = false },
        -- ansiblels = { mason = false },
        -- antlersls = { mason = false },
        -- apex_ls = { mason = false },
        -- arduino_language_server = { mason = false },
        -- asm_lsp = { mason = false },
        -- astro = { mason = false },
        -- awk_ls = { mason = false },
        -- azure_pipelines_ls = { mason = false },
        bashls = { mason = false },
        -- beancount = { mason = false },
        -- bicep = { mason = false },
        -- biome = { mason = false },
        -- blueprint_ls = { mason = false },
        -- bright_script = { mason = false },
        -- bsl_ls = { mason = false },
        -- buck2 = { mason = false },
        -- buddy_ls = { mason = false },
        -- bufls = { mason = false },
        -- cadence = { mason = false },
        -- cairo_ls = { mason = false },
        -- ccls = { mason = false },
        -- circom-lsp = { mason = false },
        clangd = { mason = false },
        -- clarity_lsp = { mason = false },
        -- clojure_lsp = { mason = false },
        cmake = { mason = false },
        -- cobol_ls = { mason = false },
        -- codeqlls = { mason = false },
        -- coffeesense = { mason = false },
        -- coq_lsp = { mason = false },
        -- crystalline = { mason = false },
        -- csharp_ls = { mason = false },
        cssls = { mason = false },
        -- cssmodules_ls = { mason = false },
        -- cucumber_language_server = { mason = false },
        -- custom_elements_ls = { mason = false },
        -- dafny = { mason = false },
        -- dagger = { mason = false },
        -- dartls = { mason = false },
        -- denols = { mason = false },
        -- dhall_lsp_server = { mason = false },
        -- diagnosticls = { mason = false },
        -- digestif = { mason = false },
        -- docker_compose_language_service = { mason = false },
        -- dockerls = { mason = false },
        -- dolmenls = { mason = false },
        dotls = { mason = false },
        -- drools_lsp = { mason = false },
        -- ds_pinyin_lsp = { mason = false },
        -- ecsact = { mason = false },
        -- efm = { mason = false },
        -- elixirls = { mason = false },
        -- elmls = { mason = false },
        -- ember = { mason = false },
        -- emmet_language_server = { mason = false },
        -- emmet_ls = { mason = false },
        -- erg_language_server = { mason = false },
        -- erlangls = { mason = false },
        -- esbonio = { mason = false },
        eslint = { mason = false },
        -- fennel_language_server = { mason = false },
        -- fennel_ls = { mason = false },
        -- flow = { mason = false },
        -- flux_lsp = { mason = false },
        -- foam_ls = { mason = false },
        -- fortls = { mason = false },
        -- fsautocomplete = { mason = false },
        -- fsharp_language_server = { mason = false },
        -- fstar = { mason = false },
        -- futhark_lsp = { mason = false },
        -- gdscript = { mason = false },
        -- ghcide = { mason = false },
        -- ghdl_ls = { mason = false },
        -- gleam = { mason = false },
        -- glint = { mason = false },
        -- glsl_analyzer = { mason = false },
        -- glslls = { mason = false },
        -- golangci_lint_ls = { mason = false },
        gopls = { mason = false },
        -- gradle_ls = { mason = false },
        -- grammarly = { mason = false },
        -- graphql = { mason = false },
        -- groovyls = { mason = false },
        -- guile_ls = { mason = false },
        -- haxe_language_server = { mason = false },
        -- hdl_checker = { mason = false },
        -- helm_ls = { mason = false },
        -- hhvm = { mason = false },
        -- hie = { mason = false },
        -- hls = { mason = false },
        -- hoon_ls = { mason = false },
        html = { mason = false },
        -- idris2_lsp = { mason = false },
        -- intelephense = { mason = false },
        -- java_language_server = { mason = false },
        -- jdtls = { mason = false },
        -- jedi_language_server = { mason = false },
        -- jqls = { mason = false },
        jsonls = { mason = false },
        -- jsonnet_ls = { mason = false },
        julials = { mason = false },
        -- kotlin_language_server = { mason = false },
        -- lean3ls = { mason = false },
        -- leanls = { mason = false },
        -- lelwel_ls = { mason = false },
        -- lemminx = { mason = false },
        -- ltex = { mason = false },
        lua_ls = {
          mason = false,
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
            },
          },
        },
        -- luau_lsp = { mason = false },
        -- m68k = { mason = false },
        marksman = { mason = false },
        -- matlab_ls = { mason = false },
        -- mdx_analyzer = { mason = false },
        -- metals = { mason = false },
        -- millet = { mason = false },
        -- mint = { mason = false },
        -- mlir_lsp_server = { mason = false },
        -- mlir_pdll_lsp_server = { mason = false },
        -- mm0_ls = { mason = false },
        -- mojo = { mason = false },
        -- move_analyzer = { mason = false },
        -- mutt_ls = { mason = false },
        -- nelua_lsp = { mason = false },
        -- neocmake = { mason = false },
        -- nickel_ls = { mason = false },
        -- nil_ls = { mason = false },
        -- nim_langserver = { mason = false },
        -- nimls = { mason = false },
        -- nixd = { mason = false },
        -- nomad_lsp = { mason = false },
        -- ntt = { mason = false },
        -- nxls = { mason = false },
        -- ocamlls = { mason = false },
        -- ocamllsp = { mason = false },
        -- ols = { mason = false },
        -- omnisharp = { mason = false },
        -- opencl_ls = { mason = false },
        -- openedge_ls = { mason = false },
        -- openscad_ls = { mason = false },
        -- openscad_lsp = { mason = false },
        -- pact_ls = { mason = false },
        -- pasls = { mason = false },
        -- perlls = { mason = false },
        -- perlnavigator = { mason = false },
        -- perlpls = { mason = false },
        -- pest_ls = { mason = false },
        -- phan = { mason = false },
        -- phpactor = { mason = false },
        -- pkgbuild_language_server = { mason = false },
        -- please = { mason = false },
        -- postgres_lsp = { mason = false },
        -- powershell_es = { mason = false },
        -- prismals = { mason = false },
        -- prolog_ls = { mason = false },
        -- prosemd_lsp = { mason = false },
        -- psalm = { mason = false },
        -- puppet = { mason = false },
        -- purescriptls = { mason = false },
        -- pylsp = { mason = false },
        -- pylyzer = { mason = false },
        -- pyre = { mason = false },
        pyright = { mason = false },
        -- qmlls = { mason = false },
        -- qml_lsp = { mason = false },
        -- quick_lint_js = { mason = false },
        -- racket_langserver = { mason = false },
        -- raku_navigator = { mason = false },
        -- reason_ls = { mason = false },
        -- regols = { mason = false },
        -- relay_lsp = { mason = false },
        -- remark_ls = { mason = false },
        -- rescriptls = { mason = false },
        r_language_server = { mason = false },
        -- rls = { mason = false },
        -- rnix = { mason = false },
        -- robotframework_ls = { mason = false },
        -- rome = { mason = false },
        -- rubocop = { mason = false },
        -- ruby_ls = { mason = false },
        ruff_lsp = { mason = false },
        -- rune_languageserver = { mason = false },
        rust_analyzer = { mason = false },
        -- salt_ls = { mason = false },
        -- scheme_langserver = { mason = false },
        -- scry = { mason = false },
        -- serve_d = { mason = false },
        -- sixtyfps = { mason = false },
        -- slint_lsp = { mason = false },
        -- smarty_ls = { mason = false },
        -- smithy_ls = { mason = false },
        -- solang = { mason = false },
        solargraph = { mason = false },
        -- solc = { mason = false },
        -- solidity_ls = { mason = false },
        -- solidity_ls_nomicfoundation = { mason = false },
        -- solidity = { mason = false },
        -- sorbet = { mason = false },
        -- sourcekit = { mason = false },
        -- sourcery = { mason = false },
        -- spectral = { mason = false },
        -- spyglassmc_language_server = { mason = false },
        -- sqlls = { mason = false },
        -- standardrb = { mason = false },
        -- starlark_rust = { mason = false },
        -- statix = { mason = false },
        -- steep = { mason = false },
        -- stylelint_lsp = { mason = false },
        svelte = { mason = false },
        -- svlangserver = { mason = false },
        -- svls = { mason = false },
        -- swift_mesonls = { mason = false },
        -- syntax_tree = { mason = false },
        tailwindcss = { mason = false },
        taplo = { mason = false },
        -- tblgen_lsp_server = { mason = false },
        -- teal_ls = { mason = false },
        -- templ = { mason = false },
        -- terraformls = { mason = false },
        -- terraform_lsp = { mason = false },
        texlab = { mason = false },
        -- textlsp = { mason = false },
        -- tflint = { mason = false },
        -- theme_check = { mason = false },
        -- thriftls = { mason = false },
        -- tilt_ls = { mason = false },
        tsserver = { mason = false },
        -- ttags = { mason = false },
        -- turtle_ls = { mason = false },
        -- typeprof = { mason = false },
        -- typst_lsp = { mason = false },
        -- uiua = { mason = false },
        -- unison = { mason = false },
        -- unocss = { mason = false },
        -- uvls = { mason = false },
        -- vala_ls = { mason = false },
        -- vale_ls = { mason = false },
        -- v_analyzer = { mason = false },
        -- vdmj = { mason = false },
        -- verible = { mason = false },
        -- veridian = { mason = false },
        -- veryl_ls = { mason = false },
        -- vhdl_ls = { mason = false },
        -- vimls = { mason = false },
        -- visualforce_ls = { mason = false },
        -- vls = { mason = false },
        -- volar = { mason = false },
        -- vtsls = { mason = false },
        vuels = { mason = false },
        -- wgsl_analyzer = { mason = false },
        yamlls = { mason = false },
        -- yang_lsp = { mason = false },
        -- yls = { mason = false },
        -- zk = { mason = false },
        -- zls = { mason = false },
      },
    },
  },
}
