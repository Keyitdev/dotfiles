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
exports.ChangelogWebview = void 0;
const Webview_1 = require("./Webview");
const vscode_1 = require("vscode");
const util_1 = require("util");
const path = require("path");
const marked_1 = require("marked");
class ChangelogWebview extends Webview_1.WebviewController {
    get id() {
        return 'Onedark Pro.Changelog';
    }
    get title() {
        return 'Onedark Pro theme Changelog';
    }
    get content() {
        const changelogPath = vscode_1.Uri.file(path.join(__dirname, '../../', 'CHANGELOG.md'));
        return new Promise((resolve) => __awaiter(this, void 0, void 0, function* () {
            const content = vscode_1.workspace.fs.readFile(changelogPath).then((data) => {
                return new util_1.TextDecoder().decode(data);
            });
            resolve(marked_1.marked.parse(yield content));
        }));
    }
}
exports.ChangelogWebview = ChangelogWebview;
//# sourceMappingURL=Changelog.js.map