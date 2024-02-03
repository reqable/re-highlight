// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:re_highlight/re_highlight.dart';

final langPurebasic = Mode(
    refs: {},
    name: "PureBASIC",
    aliases: ["pb", "pbi"],
    keywords:
        "Align And Array As Break CallDebugger Case CompilerCase CompilerDefault CompilerElse CompilerElseIf CompilerEndIf CompilerEndSelect CompilerError CompilerIf CompilerSelect CompilerWarning Continue Data DataSection Debug DebugLevel Declare DeclareC DeclareCDLL DeclareDLL DeclareModule Default Define Dim DisableASM DisableDebugger DisableExplicit Else ElseIf EnableASM EnableDebugger EnableExplicit End EndDataSection EndDeclareModule EndEnumeration EndIf EndImport EndInterface EndMacro EndModule EndProcedure EndSelect EndStructure EndStructureUnion EndWith Enumeration EnumerationBinary Extends FakeReturn For ForEach ForEver Global Gosub Goto If Import ImportC IncludeBinary IncludeFile IncludePath Interface List Macro MacroExpandedCount Map Module NewList NewMap Next Not Or Procedure ProcedureC ProcedureCDLL ProcedureDLL ProcedureReturn Protected Prototype PrototypeC ReDim Read Repeat Restore Return Runtime Select Shared Static Step Structure StructureUnion Swap Threaded To UndefineMacro Until Until  UnuseModule UseModule Wend While With XIncludeFile XOr",
    contains: <Mode>[
      Mode(
          scope: 'comment',
          begin: ";",
          end: "\$",
          contains: <Mode>[
            Mode(
                scope: 'doctag',
                begin: "[ ]*(?=(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):)",
                end: "(TODO|FIXME|NOTE|BUG|OPTIMIZE|HACK|XXX):",
                excludeBegin: true,
                relevance: 0),
            Mode(
                begin:
                    "[ ]+((?:I|a|is|so|us|to|at|if|in|it|on|[A-Za-z]+['](d|ve|re|ll|t|s|n)|[A-Za-z]+[-][a-z]+|[A-Za-z][a-z]{2,})[.]?[:]?([.][ ]|[ ])){3}")
          ],
          relevance: 0),
      Mode(
          className: 'function',
          begin: "\\b(Procedure|Declare)(C|CDLL|DLL)?\\b",
          end: "\\(",
          excludeEnd: true,
          returnBegin: true,
          contains: <Mode>[
            Mode(
                className: 'keyword',
                begin: "(Procedure|Declare)(C|CDLL|DLL)?",
                excludeEnd: true),
            Mode(className: 'type', begin: "\\.\\w*"),
            UNDERSCORE_TITLE_MODE
          ]),
      Mode(className: 'string', begin: "(~)?\"", end: "\"", illegal: "\\n"),
      Mode(className: 'symbol', begin: "#[a-zA-Z_]\\w*\\\$?")
    ]);
