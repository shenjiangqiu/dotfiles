export def parse_snapper [] {
  $in | lines|drop nth 1 2|split column '|'|str trim |headers| upsert Date {|d| ($d.Date | into datetime) }
}
