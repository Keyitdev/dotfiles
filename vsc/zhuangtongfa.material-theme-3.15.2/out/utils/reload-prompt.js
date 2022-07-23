"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.promptToReload = void 0;
const vscode_1 = require("vscode");
function promptToReload() {
    const action = 'Reload';
    const msg = {
        en: {
            reload: 'Please reload to apply the theme configuration changes.',
        },
        'zh-cn': {
            reload: '请重新加载以让主题配置更改生效',
        },
    };
    const config = JSON.parse(process.env.VSCODE_NLS_CONFIG);
    const locale = config.locale;
    let msgReload = msg.en.reload;
    if (locale === 'zh-cn') {
        msgReload = msg['zh-cn'].reload;
    }
    vscode_1.window.showInformationMessage(msgReload, action).then((selectedAction) => {
        if (selectedAction === action) {
            vscode_1.commands.executeCommand('workbench.action.reloadWindow');
        }
    });
}
exports.promptToReload = promptToReload;
//# sourceMappingURL=reload-prompt.js.map