" Vim color file
" Converted from Textmate theme Railscasts using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "railscasts"

hi Cursor ctermfg=235 ctermbg=15 cterm=NONE guifg=#2b2b2b guibg=#ffffff gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#545d73 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3e3d3d gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3e3d3d gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3e3d3d gui=NONE
hi LineNr ctermfg=102 ctermbg=237 cterm=NONE guifg=#898684 guibg=#3e3d3d gui=NONE
hi VertSplit ctermfg=241 ctermbg=241 cterm=NONE guifg=#61605e guibg=#61605e gui=NONE
hi MatchParen ctermfg=173 ctermbg=NONE cterm=underline guifg=#cc7833 guibg=NONE gui=underline
hi StatusLine ctermfg=188 ctermbg=241 cterm=bold guifg=#e6e1dc guibg=#61605e gui=bold
hi StatusLineNC ctermfg=188 ctermbg=241 cterm=NONE guifg=#e6e1dc guibg=#61605e gui=NONE
hi Pmenu ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#545d73 gui=NONE
hi IncSearch ctermfg=235 ctermbg=143 cterm=NONE guifg=#2b2b2b guibg=#a5c261 gui=NONE
"hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Search ctermfg=235 ctermbg=143 cterm=NONE guifg=#2b2b2b guibg=#a5c261 gui=NONE
hi Directory ctermfg=73 ctermbg=NONE cterm=NONE guifg=#6d9cbe guibg=NONE gui=NONE
hi Folded ctermfg=137 ctermbg=235 cterm=NONE guifg=#bc9458 guibg=#2b2b2b gui=NONE

hi Normal ctermfg=188 ctermbg=235 cterm=NONE guifg=#e6e1dc guibg=#2b2b2b gui=NONE
hi Boolean ctermfg=73 ctermbg=NONE cterm=NONE guifg=#6e9cbe guibg=NONE gui=NONE
hi Character ctermfg=73 ctermbg=NONE cterm=NONE guifg=#6d9cbe guibg=NONE gui=NONE
hi Comment ctermfg=137 ctermbg=NONE cterm=NONE guifg=#bc9458 guibg=NONE gui=italic
hi Conditional ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi Constant ctermfg=73 ctermbg=NONE cterm=NONE guifg=#6d9cbe guibg=NONE gui=NONE
hi Define ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi DiffAdd ctermfg=188 ctermbg=64 cterm=bold guifg=#e6e1dc guibg=#47840d gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8c0909 guibg=NONE gui=NONE
hi DiffChange ctermfg=188 ctermbg=23 cterm=NONE guifg=#e6e1dc guibg=#263b59 gui=NONE
hi DiffText ctermfg=188 ctermbg=24 cterm=bold guifg=#e6e1dc guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=15 ctermbg=88 cterm=NONE guifg=#ffffff guibg=#990000 gui=NONE
hi WarningMsg ctermfg=15 ctermbg=88 cterm=NONE guifg=#ffffff guibg=#990000 gui=NONE
hi Float ctermfg=143 ctermbg=NONE cterm=NONE guifg=#a5c261 guibg=NONE gui=NONE
hi Function ctermfg=221 ctermbg=NONE cterm=NONE guifg=#ffc66d guibg=NONE gui=NONE
hi Identifier ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi Keyword ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi Label ctermfg=143 ctermbg=NONE cterm=NONE guifg=#a5c261 guibg=NONE gui=NONE
hi NonText ctermfg=238 ctermbg=236 cterm=NONE guifg=#404040 guibg=#343434 gui=NONE
hi Number ctermfg=143 ctermbg=NONE cterm=NONE guifg=#a5c261 guibg=NONE gui=NONE
hi Operator ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi PreProc ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi Special ctermfg=188 ctermbg=NONE cterm=NONE guifg=#e6e1dc guibg=NONE gui=NONE
hi SpecialKey ctermfg=238 ctermbg=237 cterm=NONE guifg=#404040 guibg=#3e3d3d gui=NONE
hi Statement ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi StorageClass ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi String ctermfg=143 ctermbg=NONE cterm=NONE guifg=#a5c261 guibg=NONE gui=NONE
hi Tag ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e8bf6a guibg=NONE gui=NONE
hi Title ctermfg=188 ctermbg=NONE cterm=bold guifg=#e6e1dc guibg=NONE gui=bold
hi Todo ctermfg=137 ctermbg=NONE cterm=inverse,bold guifg=#bc9458 guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi rubyFunction ctermfg=221 ctermbg=NONE cterm=NONE guifg=#ffc66d guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=73 ctermbg=NONE cterm=NONE guifg=#6d9cbe guibg=NONE gui=NONE
hi rubyConstant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=143 ctermbg=NONE cterm=NONE guifg=#a5c261 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=189 ctermbg=NONE cterm=NONE guifg=#d0d0ff guibg=NONE gui=NONE
hi rubyInclude ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=189 ctermbg=NONE cterm=NONE guifg=#d0d0ff guibg=NONE gui=NONE
hi rubyRegexp ctermfg=143 ctermbg=NONE cterm=NONE guifg=#a5c261 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=143 ctermbg=NONE cterm=NONE guifg=#a5c261 guibg=NONE gui=NONE
hi rubyEscape ctermfg=71 ctermbg=NONE cterm=NONE guifg=#519f50 guibg=NONE gui=NONE
hi rubyControl ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi rubyException ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=189 ctermbg=NONE cterm=NONE guifg=#d0d0ff guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=167 ctermbg=NONE cterm=NONE guifg=#da4939 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=167 ctermbg=NONE cterm=NONE guifg=#da4939 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=167 ctermbg=NONE cterm=NONE guifg=#da4939 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=167 ctermbg=NONE cterm=NONE guifg=#da4939 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=137 ctermbg=NONE cterm=NONE guifg=#bc9458 guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=167 ctermbg=NONE cterm=NONE guifg=#da4939 guibg=NONE gui=NONE
hi htmlTag ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e8bf6a guibg=NONE gui=NONE
hi htmlEndTag ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e8bf6a guibg=NONE gui=NONE
hi htmlTagName ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e8bf6a guibg=NONE gui=NONE
hi htmlArg ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e8bf6a guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=73 ctermbg=NONE cterm=NONE guifg=#6d9cbe guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=173 ctermbg=NONE cterm=NONE guifg=#cc7833 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=167 ctermbg=NONE cterm=NONE guifg=#da4939 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e8bf6a guibg=NONE gui=NONE
hi yamlAnchor ctermfg=189 ctermbg=NONE cterm=NONE guifg=#d0d0ff guibg=NONE gui=NONE
hi yamlAlias ctermfg=189 ctermbg=NONE cterm=NONE guifg=#d0d0ff guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=143 ctermbg=NONE cterm=NONE guifg=#a5c261 guibg=NONE gui=NONE
hi cssURL ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName ctermfg=167 ctermbg=NONE cterm=NONE guifg=#da4939 guibg=NONE gui=NONE
hi cssColor ctermfg=73 ctermbg=NONE cterm=NONE guifg=#6d9cbe guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e8bf6a guibg=NONE gui=NONE
hi cssClassName ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e8bf6a guibg=NONE gui=NONE
hi cssValueLength ctermfg=143 ctermbg=NONE cterm=NONE guifg=#a5c261 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=143 ctermbg=NONE cterm=NONE guifg=#a5c261 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
