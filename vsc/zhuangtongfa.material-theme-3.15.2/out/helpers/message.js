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
exports.changelogMessage = void 0;
const vscode_1 = require("vscode");
const MESSAGES = {
    CHANGELOG: {
        message: 'One Dark Pro Theme was updated. Check the changelog for more details.',
        options: { cancel: 'Maybe later', ok: 'Show me' }
    },
    INSTALLATION: {
        message: 'Thank you for using One Dark Pro!'
    }
};
const changelogMessage = () => __awaiter(void 0, void 0, void 0, function* () {
    return (yield vscode_1.window.showInformationMessage(MESSAGES.CHANGELOG.message, MESSAGES.CHANGELOG.options.ok, MESSAGES.CHANGELOG.options.cancel)) === MESSAGES.CHANGELOG.options.ok;
});
exports.changelogMessage = changelogMessage;
//# sourceMappingURL=message.js.map