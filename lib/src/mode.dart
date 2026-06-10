part of 're_highlight.dart';

typedef ModeCallback =
    void Function(EnhancedMatch match, ModeCallbackResponse response);

class Mode {
  String? ref;

  /// Map<String, Mode> | Map<String, List<Mode>>
  Map<String, dynamic>? refs;

  /// LanguageDetail
  String? name;
  bool? unicodeRegex;
  bool? caseInsensitive;
  bool? self;
  bool? disableAutodetect;
  List<String>? aliases;
  Map<String, String>? classNameAliases;
  String? supersetOf;

  /// String | List<String>
  dynamic begin;

  /// String | List<String>
  dynamic match;

  /// String | List<String>
  dynamic end;

  /// String | Map<int, String>
  @Deprecated('deprecated in favor of `scope`')
  dynamic className;

  /// String | Map<int, String>
  dynamic scope;

  /// String | Map<int, String> | _CompiledScope
  dynamic beginScope;

  /// String | Map<int, String> | _CompiledScope
  dynamic endScope;

  /// List<Mode> | Mode
  dynamic contains;
  bool? endsParent;
  bool? endsWithParent;
  bool? endSameAsBegin;
  bool? skip;
  bool? excludeBegin;
  bool? excludeEnd;
  bool? returnBegin;
  bool? returnEnd;
  ModeCallback? beforeBegin;
  String? beforeMatch;
  Mode? parent;
  Mode? starts;

  /// String
  String? lexemes;

  /// Map<String, dynamic> | String
  dynamic keywords;
  String? beginKeywords;
  double? relevance;

  /// String | List<String>
  dynamic illegal;

  /// List<Mode> | Mode
  dynamic variants;
  List<Mode>? cachedVariants;
  dynamic subLanguage;
  bool? isCompiled;
  String? label;

  /// CompiledMode
  String? terminatorEnd;
  List<CompilerExt>? compilerExtensions;
  RegExp? keywordPatternRe;
  RegExp? beginRe;
  RegExp? endRe;
  RegExp? illegalRe;
  Object? matcher;

  ModeCallback? onBegin;
  ModeCallback? onEnd;
  Map<String, dynamic>? data;

  Mode({
    this.ref,
    this.refs,
    this.name,
    this.unicodeRegex,
    this.caseInsensitive,
    this.self,
    this.disableAutodetect,
    this.aliases,
    this.classNameAliases,
    this.supersetOf,
    this.begin,
    this.match,
    this.end,
    this.className,
    this.scope,
    this.beginScope,
    this.endScope,
    this.contains,
    this.endsParent,
    this.endsWithParent,
    this.endSameAsBegin,
    this.skip,
    this.excludeBegin,
    this.excludeEnd,
    this.returnBegin,
    this.returnEnd,
    this.beforeBegin,
    this.beforeMatch,
    this.parent,
    this.starts,
    this.lexemes,
    this.keywords,
    this.beginKeywords,
    this.relevance,
    this.illegal,
    this.variants,
    this.cachedVariants,
    this.subLanguage,
    this.isCompiled,
    this.label,
    this.terminatorEnd,
    this.compilerExtensions,
    this.keywordPatternRe,
    this.beginRe,
    this.endRe,
    this.illegalRe,
    this.matcher,
    this.onBegin,
    this.onEnd,
    this.data,
  });

  void clean() {
    ref = null;
    refs = null;
    name = null;
    caseInsensitive = null;
    unicodeRegex = null;
    self = null;
    disableAutodetect = null;
    aliases = null;
    classNameAliases = null;
    supersetOf = null;
    begin = null;
    match = null;
    end = null;
    className = null;
    scope = null;
    beginScope = null;
    endScope = null;
    contains = null;
    endsParent = null;
    endsWithParent = null;
    endSameAsBegin = null;
    skip = null;
    excludeBegin = null;
    excludeEnd = null;
    returnBegin = null;
    returnEnd = null;
    beforeBegin = null;
    beforeMatch = null;
    parent = null;
    starts = null;
    lexemes = null;
    keywords = null;
    beginKeywords = null;
    relevance = null;
    illegal = null;
    variants = null;
    cachedVariants = null;
    subLanguage = null;
    isCompiled = null;
    label = null;
    terminatorEnd = null;
    compilerExtensions = null;
    keywordPatternRe = null;
    beginRe = null;
    endRe = null;
    illegalRe = null;
    matcher = null;
    self = null;
    onBegin = null;
    onEnd = null;
    data = null;
  }

  Mode copyWith([Mode? mode]) {
    return Mode(
      ref: mode?.ref ?? ref,
      refs: mode?.refs ?? refs,
      name: mode?.name ?? name,
      caseInsensitive: mode?.caseInsensitive ?? caseInsensitive,
      unicodeRegex: mode?.unicodeRegex ?? unicodeRegex,
      self: mode?.self ?? self,
      disableAutodetect: mode?.disableAutodetect ?? disableAutodetect,
      aliases: mode?.aliases ?? aliases,
      classNameAliases: mode?.classNameAliases ?? classNameAliases,
      supersetOf: mode?.supersetOf ?? supersetOf,
      begin: mode?.begin ?? begin,
      match: mode?.match ?? match,
      end: mode?.end ?? end,
      className: mode?.className ?? className,
      scope: mode?.scope ?? scope,
      beginScope: mode?.beginScope ?? beginScope,
      endScope: mode?.endScope ?? endScope,
      contains: mode?.contains ?? contains,
      endsParent: mode?.endsParent ?? endsParent,
      endsWithParent: mode?.endsWithParent ?? endsWithParent,
      endSameAsBegin: mode?.endSameAsBegin ?? endSameAsBegin,
      skip: mode?.skip ?? skip,
      excludeBegin: mode?.excludeBegin ?? excludeBegin,
      excludeEnd: mode?.excludeEnd ?? excludeEnd,
      returnBegin: mode?.returnBegin ?? returnBegin,
      returnEnd: mode?.returnEnd ?? returnEnd,
      beforeBegin: mode?.beforeBegin ?? beforeBegin,
      beforeMatch: mode?.beforeMatch ?? beforeMatch,
      parent: mode?.parent ?? parent,
      starts: mode?.starts ?? starts,
      lexemes: mode?.lexemes ?? lexemes,
      keywords: mode?.keywords ?? keywords,
      beginKeywords: mode?.beginKeywords ?? beginKeywords,
      relevance: mode?.relevance ?? relevance,
      illegal: mode?.illegal ?? illegal,
      variants: mode?.variants ?? variants,
      cachedVariants: mode?.cachedVariants ?? cachedVariants,
      subLanguage: mode?.subLanguage ?? subLanguage,
      isCompiled: mode?.isCompiled ?? isCompiled,
      label: mode?.label ?? label,
      terminatorEnd: mode?.terminatorEnd ?? terminatorEnd,
      compilerExtensions: mode?.compilerExtensions ?? compilerExtensions,
      keywordPatternRe: mode?.keywordPatternRe ?? keywordPatternRe,
      beginRe: mode?.beginRe ?? beginRe,
      endRe: mode?.endRe ?? endRe,
      illegalRe: mode?.illegalRe ?? illegalRe,
      matcher: mode?.matcher ?? matcher,
      onBegin: mode?.onBegin ?? onBegin,
      onEnd: mode?.onEnd ?? onEnd,
      data: mode?.data ?? data,
    );
  }
}
