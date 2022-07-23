"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.WebviewController = void 0;
const vscode_1 = require("vscode");
class WebviewController extends vscode_1.Disposable {
    constructor() {
        super(() => this.dispose());
    }
    dispose() {
        if (this.disposablePanel) {
            this.disposablePanel.dispose();
        }
    }
    show() {
        return __awaiter(this, void 0, void 0, function* () {
            const fullHtml = yield this.content;
            if (this.panel !== undefined) {
                this.panel.webview.html = fullHtml;
                return this.panel.reveal(vscode_1.ViewColumn.Active);
            }
            this.panel = vscode_1.window.createWebviewPanel(this.id, this.title, vscode_1.ViewColumn.Active, {
                enableCommandUris: true,
                enableFindWidget: true,
                enableScripts: true,
                retainContextWhenHidden: true
            });
            this.panel.webview.html = fullHtml;
        });
    }
}
exports.WebviewController = WebviewController;
//# sourceMappingURL=Webview.js.map