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
exports.Theme = void 0;
const themeData_1 = require("./themeData");
function createEditorTokens(config) {
    return __awaiter(this, void 0, void 0, function* () {
        return config.editorTheme in themeData_1.default.editorThemes
            ? (yield themeData_1.default.editorThemes[config.editorTheme]()).default
            : (yield themeData_1.default.editorThemes['One Dark Pro']()).default;
    });
}
const uniqBy = (arr, fn, set = new Set()) => arr.filter((el) => ((v) => !set.has(v) && set.add(v))(typeof fn === 'function' ? fn(el) : el[fn]));
function mergeTheme(baseArray, overrides) {
    let mergeArr = [...baseArray, ...overrides];
    let newArr = uniqBy(mergeArr, 'scope');
    overrides.forEach((item) => {
        newArr.forEach((cell) => {
            if (cell.scope === item.scope) {
                cell.settings = Object.assign(Object.assign({}, cell.settings), item.settings);
            }
        });
    });
    return JSON.parse(JSON.stringify(newArr));
}
function configFactory(configuration) {
    let result = JSON.parse(JSON.stringify(themeData_1.default.tokenColors.default));
    if (configuration.bold) {
        result = mergeTheme(result, themeData_1.default.tokenColors.bold);
    }
    if (configuration.italic) {
        result = mergeTheme(result, themeData_1.default.tokenColors.italic);
    }
    // Fill in color placeholders with concrete color values
    let colorObj = configuration.vivid
        ? themeData_1.default.textColors.vivid
        : themeData_1.default.textColors.classic;
    for (let key in colorObj) {
        if (configuration[key]) {
            colorObj[key] = configuration[key];
        }
    }
    result.forEach((token) => {
        if (token.settings.foreground) {
            if (token.settings.foreground in colorObj) {
                token.settings.foreground = colorObj[token.settings.foreground];
            }
        }
    });
    return {
        semanticTokenColors: {
            enumMember: {
                foreground: colorObj.fountainBlue,
            },
            'variable.constant': {
                foreground: colorObj.whiskey,
            },
            'variable.defaultLibrary': {
                foreground: colorObj.chalky,
            },
            'variable:dart': {
                foreground: colorObj.whiskey,
            },
            'property:dart': {
                foreground: colorObj.whiskey,
            },
            'annotation:dart': {
                foreground: colorObj.whiskey,
            },
            'parameter.label:dart': {
                foreground: colorObj.lightWhite,
            },
            macro: {
                foreground: colorObj.whiskey,
            },
        },
        tokenColors: result,
    };
}
class Theme {
    constructor(configuration) {
        this.name = 'One Dark Pro';
        this.type = 'dark';
        this.semanticHighlighting = true;
        const themeTokens = configFactory(configuration);
        this.semanticTokenColors = themeTokens.semanticTokenColors;
        this.tokenColors = themeTokens.tokenColors;
        // this.colors = createEditorTokens(configuration)
    }
    static init(config) {
        return __awaiter(this, void 0, void 0, function* () {
            const result = Object.assign(Object.assign({}, new Theme(config)), { colors: yield createEditorTokens(config) });
            return result;
        });
    }
}
exports.Theme = Theme;
//# sourceMappingURL=Theme.js.map