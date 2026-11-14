import sys, os, json, shutil
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from highland_lib import FLAVORS, ui, ansi, mix, PAL, HERE
OUT=os.path.join(HERE,'ports','vscode')
os.makedirs(os.path.join(OUT,'themes'),exist_ok=True)

def A(h,a): return h+'%02X'%round(a*255)   # add alpha

def theme(fl):
    c=FLAVORS[fl]['colors']; u=ui(fl); dark=FLAVORS[fl]['dark']; an=ansi(fl)
    acc=c['gold'] if dark else c['moss']
    forest=PAL['brand']['forest']; white='#FFFFFF'
    sel=u['selection_bg']
    names=['Black','Red','Green','Yellow','Blue','Magenta','Cyan','White']
    term={}
    for i,n in enumerate(names):
        term[f'terminal.ansi{n}']=an[i]; term[f'terminal.ansiBright{n}']=an[i+8]
    colors={
     # base
     'focusBorder':A(acc,0.8),'foreground':c['text'],'descriptionForeground':c['subtext0'],'errorForeground':c['rowan'],
     'disabledForeground':c['overlay1'],'icon.foreground':c['subtext1'],'widget.shadow':A(c['crust'],0.5),
     'selection.background':A(sel,0.9),'textLink.foreground':c['saltire'],'textLink.activeForeground':c['loch'],
     'textPreformat.foreground':c['bracken'],'textBlockQuote.background':c['mantle'],'textBlockQuote.border':acc,
     'textCodeBlock.background':c['mantle'],'textSeparator.foreground':c['surface2'],
     'sash.hoverBorder':acc,'contrastBorder':'#00000000',
     # window / title
     'titleBar.activeBackground':c['crust'],'titleBar.activeForeground':c['text'],
     'titleBar.inactiveBackground':c['crust'],'titleBar.inactiveForeground':c['overlay2'],'titleBar.border':c['crust'],
     'menu.background':c['mantle'],'menu.foreground':c['text'],'menu.selectionBackground':sel,'menu.selectionForeground':c['text'],
     'menu.separatorBackground':c['surface1'],'menu.border':c['surface1'],'menubar.selectionBackground':c['surface0'],
     'commandCenter.background':c['mantle'],'commandCenter.foreground':c['subtext1'],'commandCenter.border':c['surface1'],
     'commandCenter.activeBackground':c['surface0'],
     # activity bar
     'activityBar.background':c['crust'],'activityBar.foreground':acc,'activityBar.inactiveForeground':c['overlay1'],
     'activityBar.border':c['crust'],'activityBar.activeBorder':acc,'activityBar.activeBackground':c['mantle'],
     'activityBarBadge.background':forest,'activityBarBadge.foreground':white,
     'activityBarTop.foreground':acc,'activityBarTop.inactiveForeground':c['overlay1'],'activityBarTop.activeBorder':acc,
     # side bar
     'sideBar.background':c['mantle'],'sideBar.foreground':c['subtext1'],'sideBar.border':c['crust'],
     'sideBarTitle.foreground':c['text'],'sideBarSectionHeader.background':c['mantle'],'sideBarSectionHeader.foreground':c['text'],
     'sideBarSectionHeader.border':c['surface0'],
     # lists
     'list.activeSelectionBackground':sel,'list.activeSelectionForeground':c['text'],
     'list.inactiveSelectionBackground':c['surface0'],'list.inactiveSelectionForeground':c['text'],
     'list.hoverBackground':A(c['surface0'],0.7),'list.hoverForeground':c['text'],
     'list.focusBackground':sel,'list.focusForeground':c['text'],'list.focusOutline':A(acc,0.6),
     'list.highlightForeground':acc,'list.focusHighlightForeground':acc,'list.dropBackground':A(forest,0.4),
     'list.errorForeground':c['rowan'],'list.warningForeground':c['bracken'],'list.invalidItemForeground':c['rowan'],
     'list.deemphasizedForeground':c['overlay1'],
     'tree.indentGuidesStroke':c['surface2'],'tree.inactiveIndentGuidesStroke':c['surface1'],
     # editor
     'editor.background':c['base'],'editor.foreground':c['text'],
     'editorLineNumber.foreground':c['overlay1'],'editorLineNumber.activeForeground':acc,
     'editorCursor.foreground':c['gold'] if dark else c['text'],'editorCursor.background':c['base'],
     'editor.selectionBackground':A(sel,0.85),'editor.inactiveSelectionBackground':A(sel,0.45),
     'editor.selectionHighlightBackground':A(sel,0.4),'editor.wordHighlightBackground':A(c['surface2'],0.5),
     'editor.wordHighlightStrongBackground':A(c['surface2'],0.8),
     'editor.findMatchBackground':A(c['gold'],0.35 if dark else 0.4),'editor.findMatchBorder':c['gold'],
     'editor.findMatchHighlightBackground':A(c['gold'],0.18),'editor.findRangeHighlightBackground':A(c['surface1'],0.5),
     'editor.lineHighlightBackground':u['line_hl'],'editor.lineHighlightBorder':'#00000000',
     'editor.rangeHighlightBackground':A(c['surface1'],0.4),'editor.hoverHighlightBackground':A(c['surface1'],0.5),
     'editorLink.activeForeground':c['saltire'],
     'editorWhitespace.foreground':A(c['overlay0'],0.6),
     'editorIndentGuide.background1':c['surface1'],'editorIndentGuide.activeBackground1':c['overlay0'],
     'editorRuler.foreground':c['surface1'],'editorCodeLens.foreground':c['overlay1'],
     'editorBracketMatch.background':A(c['gold'],0.15),'editorBracketMatch.border':A(c['gold'],0.6),
     'editorBracketHighlight.foreground1':c['gold'],'editorBracketHighlight.foreground2':c['thistle'],
     'editorBracketHighlight.foreground3':c['loch'],'editorBracketHighlight.foreground4':c['heather'],
     'editorBracketHighlight.foreground5':c['saltire'],'editorBracketHighlight.foreground6':c['bracken'],
     'editorBracketHighlight.unexpectedBracket.foreground':c['rowan'],
     'editorError.foreground':c['rowan'],'editorWarning.foreground':c['bracken'],'editorInfo.foreground':c['saltire'],
     'editorHint.foreground':c['loch'],
     'editorGutter.background':c['base'],'editorGutter.modifiedBackground':c['saltire'],
     'editorGutter.addedBackground':c['moss'],'editorGutter.deletedBackground':c['rowan'],
     'editorGutter.foldingControlForeground':c['overlay2'],
     'editorOverviewRuler.border':'#00000000','editorOverviewRuler.errorForeground':c['rowan'],
     'editorOverviewRuler.warningForeground':c['bracken'],'editorOverviewRuler.infoForeground':c['saltire'],
     'editorOverviewRuler.modifiedForeground':c['saltire'],'editorOverviewRuler.addedForeground':c['moss'],
     'editorOverviewRuler.deletedForeground':c['rowan'],'editorOverviewRuler.findMatchForeground':c['gold'],
     'editorInlayHint.background':A(c['surface0'],0.7),'editorInlayHint.foreground':c['overlay2'],
     'editorGhostText.foreground':c['overlay1'],
     'editorStickyScroll.background':c['base'],'editorStickyScrollHover.background':c['surface0'],
     # widgets
     'editorWidget.background':c['mantle'],'editorWidget.foreground':c['text'],'editorWidget.border':c['surface1'],
     'editorSuggestWidget.background':c['mantle'],'editorSuggestWidget.border':c['surface1'],
     'editorSuggestWidget.foreground':c['text'],'editorSuggestWidget.selectedBackground':sel,
     'editorSuggestWidget.highlightForeground':acc,'editorSuggestWidget.focusHighlightForeground':acc,
     'editorHoverWidget.background':c['mantle'],'editorHoverWidget.border':c['surface1'],
     'quickInput.background':c['mantle'],'quickInput.foreground':c['text'],
     'quickInputList.focusBackground':sel,'quickInputTitle.background':c['crust'],
     'pickerGroup.foreground':acc,'pickerGroup.border':c['surface1'],
     'debugToolBar.background':c['mantle'],
     # peek
     'peekView.border':acc,'peekViewEditor.background':c['mantle'],'peekViewEditor.matchHighlightBackground':A(c['gold'],0.3),
     'peekViewResult.background':c['crust'],'peekViewResult.selectionBackground':sel,'peekViewResult.matchHighlightBackground':A(c['gold'],0.3),
     'peekViewResult.fileForeground':c['text'],'peekViewResult.lineForeground':c['subtext1'],
     'peekViewTitle.background':c['crust'],'peekViewTitleLabel.foreground':c['text'],'peekViewTitleDescription.foreground':c['subtext0'],
     # tabs / groups
     'editorGroup.border':c['crust'],'editorGroup.dropBackground':A(forest,0.3),
     'editorGroupHeader.tabsBackground':c['crust'],'editorGroupHeader.tabsBorder':c['crust'],
     'editorGroupHeader.noTabsBackground':c['crust'],
     'tab.activeBackground':c['base'],'tab.activeForeground':c['text'],'tab.activeBorderTop':acc,'tab.activeBorder':c['base'],
     'tab.inactiveBackground':c['mantle'],'tab.inactiveForeground':c['overlay2'],'tab.border':c['crust'],
     'tab.hoverBackground':c['surface0'],'tab.hoverForeground':c['text'],
     'tab.unfocusedActiveBackground':c['base'],'tab.unfocusedActiveForeground':c['subtext1'],'tab.unfocusedActiveBorderTop':A(acc,0.4),
     'tab.unfocusedInactiveForeground':c['overlay1'],'tab.activeModifiedBorder':c['gorse'],'tab.inactiveModifiedBorder':A(c['gorse'],0.5),
     'breadcrumb.foreground':c['overlay2'],'breadcrumb.focusForeground':c['text'],'breadcrumb.activeSelectionForeground':acc,
     'breadcrumb.background':c['base'],'breadcrumbPicker.background':c['mantle'],
     # panel / terminal
     'panel.background':c['mantle'],'panel.border':c['surface0'],'panelTitle.activeForeground':c['text'],
     'panelTitle.inactiveForeground':c['overlay2'],'panelTitle.activeBorder':acc,'panelInput.border':c['surface1'],
     'terminal.background':c['mantle'],'terminal.foreground':c['text'],'terminalCursor.foreground':c['gold'] if dark else c['text'],
     'terminal.selectionBackground':A(sel,0.85),'terminal.border':c['surface0'],
     **term,
     # status bar
     'statusBar.background':c['crust'],'statusBar.foreground':c['subtext1'],'statusBar.border':c['crust'],
     'statusBar.noFolderBackground':c['crust'],'statusBar.debuggingBackground':c['bracken'],'statusBar.debuggingForeground':c['base'],
     'statusBarItem.hoverBackground':c['surface0'],'statusBarItem.remoteBackground':forest,'statusBarItem.remoteForeground':white,
     'statusBarItem.prominentBackground':forest,'statusBarItem.prominentForeground':white,
     'statusBarItem.errorBackground':c['rowan'],'statusBarItem.errorForeground':c['base'],
     'statusBarItem.warningBackground':c['bracken'],'statusBarItem.warningForeground':c['base'],
     # inputs / buttons / dropdown
     'input.background':c['surface0'],'input.foreground':c['text'],'input.border':c['surface1'],'input.placeholderForeground':c['overlay1'],
     'inputOption.activeBackground':A(forest,0.6),'inputOption.activeBorder':acc,'inputOption.activeForeground':c['text'],
     'inputValidation.errorBackground':c['mantle'],'inputValidation.errorBorder':c['rowan'],
     'inputValidation.warningBackground':c['mantle'],'inputValidation.warningBorder':c['bracken'],
     'inputValidation.infoBackground':c['mantle'],'inputValidation.infoBorder':c['saltire'],
     'dropdown.background':c['surface0'],'dropdown.foreground':c['text'],'dropdown.border':c['surface1'],'dropdown.listBackground':c['mantle'],
     'button.background':forest,'button.foreground':white,'button.hoverBackground':mix(forest,'#FFFFFF',0.12),
     'button.secondaryBackground':c['surface1'],'button.secondaryForeground':c['text'],'button.secondaryHoverBackground':c['surface2'],
     'button.border':'#00000000','checkbox.background':c['surface0'],'checkbox.border':c['surface2'],'checkbox.foreground':acc,
     'badge.background':forest,'badge.foreground':white,
     'progressBar.background':acc,
     'scrollbar.shadow':A(c['crust'],0.4),'scrollbarSlider.background':A(c['surface2'],0.5),
     'scrollbarSlider.hoverBackground':A(c['overlay0'],0.6),'scrollbarSlider.activeBackground':A(acc,0.5),
     'minimap.background':c['base'],'minimap.selectionHighlight':A(sel,0.9),'minimap.findMatchHighlight':A(c['gold'],0.6),
     'minimap.errorHighlight':c['rowan'],'minimap.warningHighlight':c['bracken'],
     'minimapGutter.addedBackground':c['moss'],'minimapGutter.modifiedBackground':c['saltire'],'minimapGutter.deletedBackground':c['rowan'],
     'minimapSlider.background':A(c['surface2'],0.3),'minimapSlider.hoverBackground':A(c['surface2'],0.5),
     # git / diff
     'gitDecoration.addedResourceForeground':c['moss'],'gitDecoration.modifiedResourceForeground':c['saltire'],
     'gitDecoration.deletedResourceForeground':c['rowan'],'gitDecoration.untrackedResourceForeground':c['loch'],
     'gitDecoration.ignoredResourceForeground':c['overlay0'],'gitDecoration.conflictingResourceForeground':c['bracken'],
     'gitDecoration.renamedResourceForeground':c['thistle'],'gitDecoration.stageModifiedResourceForeground':c['gorse'],
     'gitDecoration.stageDeletedResourceForeground':c['rowan'],'gitDecoration.submoduleResourceForeground':c['bluebell'],
     'diffEditor.insertedTextBackground':A(c['moss'],0.18),'diffEditor.removedTextBackground':A(c['rowan'],0.18),
     'diffEditor.insertedLineBackground':A(c['moss'],0.10),'diffEditor.removedLineBackground':A(c['rowan'],0.10),
     'diffEditor.diagonalFill':A(c['surface2'],0.5),
     'merge.currentHeaderBackground':A(c['moss'],0.4),'merge.currentContentBackground':A(c['moss'],0.15),
     'merge.incomingHeaderBackground':A(c['saltire'],0.4),'merge.incomingContentBackground':A(c['saltire'],0.15),
     # notifications
     'notifications.background':c['mantle'],'notifications.foreground':c['text'],'notifications.border':c['surface1'],
     'notificationCenterHeader.background':c['crust'],'notificationCenterHeader.foreground':c['text'],
     'notificationLink.foreground':c['saltire'],'notificationsErrorIcon.foreground':c['rowan'],
     'notificationsWarningIcon.foreground':c['bracken'],'notificationsInfoIcon.foreground':c['saltire'],
     'notificationToast.border':c['surface1'],
     # misc
     'settings.headerForeground':c['text'],'settings.modifiedItemIndicator':acc,
     'keybindingLabel.background':c['surface0'],'keybindingLabel.foreground':c['text'],'keybindingLabel.border':c['surface1'],
     'keybindingLabel.bottomBorder':c['surface2'],
     'welcomePage.tileBackground':c['mantle'],'walkThrough.embeddedEditorBackground':c['mantle'],
     'debugIcon.breakpointForeground':c['rowan'],'charts.red':c['rowan'],'charts.blue':c['saltire'],'charts.yellow':c['gorse'],
     'charts.orange':c['bracken'],'charts.green':c['moss'],'charts.purple':c['thistle'],'charts.foreground':c['text'],
     'symbolIcon.functionForeground':c['saltire'],'symbolIcon.methodForeground':c['saltire'],'symbolIcon.classForeground':c['gorse'],
     'symbolIcon.variableForeground':c['text'],'symbolIcon.keywordForeground':c['thistle'],'symbolIcon.propertyForeground':c['loch'],
     'symbolIcon.constantForeground':c['bracken'],'symbolIcon.stringForeground':c['moss'],'symbolIcon.interfaceForeground':c['gorse'],
    }
    def s(scope,fg,style=None):
        d={'scope':scope,'settings':{'foreground':fg}}
        if style is not None: d['settings']['fontStyle']=style
        return d
    tok=[
     s(['comment','punctuation.definition.comment','string.comment'],c['overlay2'],'italic'),
     s(['keyword','keyword.control','keyword.other','storage.modifier','keyword.operator.new','keyword.operator.expression','keyword.operator.logical.python'],c['thistle']),
     s(['storage','storage.type','keyword.declaration','keyword.function','support.type.primitive','keyword.type'],c['gold']),
     s(['entity.name.function','support.function','meta.function-call entity.name.function','variable.function','entity.name.function.member'],c['saltire']),
     s(['string','string.quoted','string.template','punctuation.definition.string'],c['moss']),
     s(['constant.character.escape','string.regexp','constant.other.placeholder'],c['loch']),
     s(['constant.numeric','constant.language','constant.language.boolean','constant.other','support.constant','variable.other.constant','variable.other.enummember'],c['bracken']),
     s(['variable','variable.other','variable.other.readwrite','meta.definition.variable'],c['text']),
     s(['variable.parameter','meta.parameter','entity.name.variable.parameter'],c['heather'],'italic'),
     s(['variable.language','variable.language.this','variable.language.self','variable.language.super'],c['rowan'],'italic'),
     s(['variable.other.property','variable.other.object.property','support.variable.property','meta.object-literal.key','entity.name.tag.yaml','support.type.property-name','meta.property-name'],c['loch']),
     s(['entity.name.type','entity.name.class','support.class','support.type','entity.other.inherited-class','entity.name.namespace','entity.name.type.module'],c['gorse']),
     s(['keyword.operator','punctuation.accessor','keyword.operator.assignment','keyword.operator.arithmetic','keyword.operator.comparison'],c['loch']),
     s(['punctuation','meta.brace','punctuation.separator','punctuation.terminator'],c['subtext0']),
     s(['entity.name.tag','meta.tag.sgml','punctuation.definition.tag'],c['rowan']),
     s(['entity.other.attribute-name','entity.other.attribute-name.html'],c['gold'],'italic'),
     s(['entity.name.function.decorator','meta.decorator','punctuation.decorator','storage.type.annotation','meta.annotation'],c['bracken'],'italic'),
     s(['support.type.property-name.css','support.type.vendored.property-name.css'],c['loch']),
     s(['support.constant.property-value.css','constant.other.color','keyword.other.unit'],c['bracken']),
     s(['entity.other.attribute-name.class.css','entity.other.attribute-name.id.css'],c['gold']),
     s(['markup.heading','entity.name.section','markup.heading punctuation.definition.heading'],c['gold'],'bold'),
     s(['markup.bold'],c['bracken'],'bold'),s(['markup.italic'],c['heather'],'italic'),
     s(['markup.underline.link','string.other.link','markup.link'],c['saltire'],'underline'),
     s(['markup.inline.raw','markup.fenced_code','markup.raw'],c['moss']),
     s(['markup.quote'],c['subtext1'],'italic'),s(['markup.list punctuation.definition.list'],c['thistle']),
     s(['markup.inserted','punctuation.definition.inserted'],c['moss']),
     s(['markup.deleted','punctuation.definition.deleted'],c['rowan']),
     s(['markup.changed','punctuation.definition.changed'],c['saltire']),
     s(['meta.diff.header','meta.diff.range'],c['thistle']),
     s(['support.function.builtin','support.function.magic'],c['saltire'],'italic'),
     s(['source.shell variable.other','variable.other.normal.shell','punctuation.definition.variable.shell'],c['heather']),
     s(['support.function.powershell','support.function.cmdlet'],c['saltire']),
     s(['invalid','invalid.illegal'],c['rowan'],'underline'),
     s(['invalid.deprecated'],c['bracken'],'strikethrough'),
    ]
    sem={
     'namespace':c['gorse'],'class':c['gorse'],'enum':c['gorse'],'interface':c['gorse'],'struct':c['gorse'],'type':c['gorse'],
     'typeParameter':{'foreground':c['gorse'],'italic':True},
     'parameter':{'foreground':c['heather'],'italic':True},'variable':c['text'],'variable.readonly':c['bracken'],
     'variable.defaultLibrary':c['rowan'],'property':c['loch'],'enumMember':c['bracken'],'event':c['loch'],
     'function':c['saltire'],'method':c['saltire'],'function.defaultLibrary':{'foreground':c['saltire'],'italic':True},
     'macro':c['bracken'],'label':c['thistle'],'comment':{'foreground':c['overlay2'],'italic':True},'string':c['moss'],
     'keyword':c['thistle'],'number':c['bracken'],'regexp':c['loch'],'operator':c['loch'],
     'decorator':{'foreground':c['bracken'],'italic':True},'selfKeyword':{'foreground':c['rowan'],'italic':True},
     '*.deprecated':{'strikethrough':True},
    }
    return {'$schema':'vscode://schemas/color-theme','name':FLAVORS[fl]['name'],'type':'dark' if dark else 'light',
            'semanticHighlighting':True,'colors':colors,'tokenColors':tok,'semanticTokenColors':sem}

for fl in FLAVORS:
    json.dump(theme(fl),open(os.path.join(OUT,'themes',f'highland-{fl}-color-theme.json'),'w'),indent=2)

pkg={'name':'highland-theme','displayName':'Highland','description':PAL['description'],'version':PAL['version'],
     'publisher':'shanks','license':'MIT','icon':'icon.png',
     'repository':{'type':'git','url':PAL.get('repository','https://github.com/YOUR-GITHUB-USER/highland')},
     'engines':{'vscode':'^1.80.0'},'categories':['Themes'],'keywords':['theme','dark','light','scottish','highland','green'],
     'galleryBanner':{'color':'#0B1F2A','theme':'dark'},
     'contributes':{'themes':[
        {'label':'Highland Midnight','uiTheme':'vs-dark','path':'./themes/highland-midnight-color-theme.json'},
        {'label':'Highland Mist','uiTheme':'vs','path':'./themes/highland-mist-color-theme.json'}]}}
json.dump(pkg,open(os.path.join(OUT,'package.json'),'w'),indent=2)
open(os.path.join(OUT,'README.md'),'w').write('''# Highland for VS Code

A Scottish Highland color theme from the Shanks brand.

- **Highland Midnight**: dark, with Celtic Gold accents
- **Highland Mist**: light, with Moss Green accents

## Install

1. Open VS Code.
2. Extensions view, then the `...` menu, then **Install from VSIX...**
3. Select `highland-theme-1.0.0.vsix`.
4. `Ctrl+K Ctrl+T` and pick **Highland Midnight** or **Highland Mist**.

Or from a terminal: `code --install-extension highland-theme-1.0.0.vsix`
''')
open(os.path.join(OUT,'CHANGELOG.md'),'w').write('# Changelog\n\n## 1.0.0\n\n- First release: Highland Midnight and Highland Mist.\n')
open(os.path.join(OUT,'LICENSE'),'w').write('''MIT License

Copyright (c) 2026 Shanks IT Solutions

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
''')
shutil.copy(os.path.join(HERE,'assets','icon-256.png'),os.path.join(OUT,'icon.png'))
print('generated',OUT)
