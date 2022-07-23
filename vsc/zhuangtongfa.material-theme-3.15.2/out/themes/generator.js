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
exports.generateTheme = void 0;
const vscode_1 = require("vscode");
const Theme_1 = require("./Theme");
const defaultSettings = require("../defaultConfig.json");
const colorObjArr_1 = require("../utils/colorObjArr");
exports.generateTheme = {
    default: function () {
        return __awaiter(this, void 0, void 0, function* () {
            return yield Theme_1.Theme.init(defaultSettings);
        });
    },
    fromSettings: function (themeName) {
        return __awaiter(this, void 0, void 0, function* () {
            const configuration = vscode_1.workspace.getConfiguration('oneDarkPro');
            let colorObj = {};
            colorObjArr_1.default.forEach((item) => {
                let value = configuration.get('color')[item];
                if (value) {
                    colorObj[item] = value;
                }
            });
            const buildConfig = Object.assign({ bold: configuration.get('bold', defaultSettings.bold), editorTheme: themeName ||
                    configuration.get('editorTheme', defaultSettings.editorTheme), italic: configuration.get('italic', defaultSettings.italic), vivid: configuration.get('vivid', defaultSettings.vivid) }, colorObj);
            return yield Theme_1.Theme.init(buildConfig);
        });
    },
};
//# sourceMappingURL=generator.js.map