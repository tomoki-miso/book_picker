enum SearchType {
  title('タイトルで検索', '著者名で検索'),
  author('著者名で検索', 'タイトルで検索'),
  ;

  const SearchType(
    this.displayName,
    this.reverseDisplayName,
  );

  final String displayName;
  final String reverseDisplayName;
}
