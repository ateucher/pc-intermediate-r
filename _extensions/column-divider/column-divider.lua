function column_divider(col)
  if quarto.doc.is_format("revealjs") then
    local colour = ""
    if #col > 0 then
      colour = pandoc.utils.stringify(col[1])
    end
    return pandoc.RawBlock(
    'html', 
    '<div class="column" style="width:2%;"><div class="column-divider" style="border-left: 1px solid ' .. colour .. '; min-height: 95vh; margin: 0 auto; width: 0;"></div></div>')
  end
  return pandoc.Null()
end

return {
  ['column-divider'] = column_divider
}
