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
exports.updateTheme = void 0;
const path_1 = require("path");
const vscode_1 = require("vscode");
const util_1 = require("util");
const themes_1 = require("../themes");
const _1 = require("./");
function updateTheme() {
    return __awaiter(this, void 0, void 0, function* () {
        const writeTheme = (fileName, themeName) => __awaiter(this, void 0, void 0, function* () {
            const THEME_PATH = vscode_1.Uri.file((0, path_1.join)(__dirname, '../../', 'themes', fileName));
            const theme = yield themes_1.generateTheme.fromSettings(themeName);
            return vscode_1.workspace.fs.writeFile(THEME_PATH, new util_1.TextEncoder().encode(JSON.stringify(theme, null, 2)));
        });
        let promiseArr = [];
        promiseArr = [
            writeTheme('OneDark-Pro.json'),
            writeTheme('OneDark-Pro-flat.json', 'One Dark Pro Flat'),
            writeTheme('OneDark-Pro-darker.json', 'One Dark Pro Darker'),
        ];
        yield Promise.all(promiseArr);
        (0, _1.promptToReload)();
    });
}
exports.updateTheme = updateTheme;
//# sourceMappingURL=updateTheme.js.map