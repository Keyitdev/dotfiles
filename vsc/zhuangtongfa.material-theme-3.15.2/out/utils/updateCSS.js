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
exports.updateCSS = void 0;
const vscode_1 = require("vscode");
const util_1 = require("util");
const path_1 = require("path");
const getCSSPath = file => (0, path_1.join)(__dirname, '../../', 'styles', file);
function updateCSS() {
    const configuration = vscode_1.workspace.getConfiguration('oneDarkPro');
    const files = [
        'atom-one-dark-inside.css',
        'base-inside.css',
        'markdown-inside.css'
    ];
    if (!configuration.get('markdownStyle')) {
        files.forEach(file => {
            vscode_1.workspace.fs.writeFile(vscode_1.Uri.file(getCSSPath(file)), new util_1.TextEncoder().encode(''));
        });
    }
    else {
        files.forEach((file) => __awaiter(this, void 0, void 0, function* () {
            const fileContents = yield vscode_1.workspace.fs.readFile(vscode_1.Uri.file(getCSSPath(`./origin/${file}`)));
            vscode_1.workspace.fs.writeFile(vscode_1.Uri.file(getCSSPath(`./${file}`)), fileContents);
        }));
    }
}
exports.updateCSS = updateCSS;
//# sourceMappingURL=updateCSS.js.map