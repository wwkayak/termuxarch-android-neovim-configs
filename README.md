# TermuxArch, on Android, NeoVim Configuration Stuff
Just backing up my config files as I learn how to setup Neovim.
DON'T USE THIS I HAVE NO CLUE WHAT IM DOING YET 😀

So far I've really only setup everything for Lua, but it seems to be working,
other than some weird quirks that I am assuming is because it's ON My PHONE! ;)
<div align="center">

<sub>Debugging in Neovim with TermuxArch on Android</sub>
![Debugging](images/nvim-android-debug.jpg?raw=true)

<sub>DAP setup in Neovim with TermuxArch on Android</sub>
![DAP Config](images/nvim-android-config.jpg?raw=true)

</div>

* Neovim Language Server (bultin LSP): with [LuaLs](https://github.com/LuaLS/lua-language-server) language server (formerly Sumneko_lua) 
* Code Completion: [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* DAP Debugging:
  * [nvim-dap](https://github.com/mfussenegger/nvim-dap)
  * [one-small-step-for-vimkind(osv)](https://github.com/jbyuki/one-small-step-for-vimkind) 
  * [nvim-dap-ui](https://github.com/mfussenegger/nvim-dap)
<br/>

---

The biggest issue(s), so far, are related to Debugging:
* I can't "launch" the [one-small-step-for-vimkind(osv)](https://github.com/jbyuki/one-small-step-for-vimkind) lua debug adapteer as a server 
and connect to it later. I have use the alternate method of calling osv.run_this(),
which lanches the adapter, and connects to it.
* The [nvim-dap](https://github.com/mfussenegger/nvim-dap) event callbacks don't seem to work (could be me). This means I 
need to do everything "manually": 
  * start the osv/nvim-dap lua adapter/client \<F5\>
  * open nvim-dap-ui \<F6\>
    * ... debug code ...
  * close nvim-dap-ui \<F7\>
  * disconnect dap client \<F12\>
<br/>

---

<div align="center">

#### packer.nvim - Total plugins: 32

**_TODO_** add plugin urls
<p align="left"> LuaSnip</p>
<p align="left"> cmp-buffer </p> 
<p align="left"> cmp-nvim-lsp </p> 
<p align="left"> cmp-nvim-lua </p> 
<p align="left"> cmp-path </p> 
<p align="left"> cmp_luasnip </p> 
<p align="left"> fzf.vim </p> 
<p align="left"> gitsigns.nvim </p> 
<p align="left"> lualine.nvim </p> 
<p align="left"> mason-lspconfig.nvim </p> 
<p align="left"> mason.nvim </p> 
<p align="left"> neodev.nvim </p> 
<p align="left"> neogit </p> 
<p align="left"> nvim-cmp </p> 
<p align="left"> nvim-dap </p> 
<p align="left"> nvim-dap-ui </p> 
<p align="left"> nvim-dap-virtual-text </p> 
<p align="left"> nvim-lspconfig </p> 
<p align="left"> nvim-surround </p> 
<p align="left"> nvim-tree.lua </p> 
<p align="left"> nvim-treesitter </p> 
<p align="left"> nvim-web-devicons </p> 
<p align="left"> one-small-step-for-vimkind </p> 
<p align="left"> packer.nvim </p> 
<p align="left"> plenary.nvim </p> 
<p align="left"> tabby.nvim </p> 
<p align="left"> telescope-dap.nvim </p> 
<p align="left"> telescope-fzf-native.nvim </p> 
<p align="left"> telescope.nvim </p> 
<p align="left"> tokyonight.nvim </p> 
<p align="left"> undotree </p> 
</div>
</div>
