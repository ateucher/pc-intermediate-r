function column_divider(args, kwargs, meta)
  if quarto.doc.is_format("revealjs") then
    -- quarto.log.output("kwargs: ", #kwargs)
    -- quarto.log.output("col: ", kwargs.col)
    local col = ""
    if kwargs.col ~= nil then
      col = pandoc.utils.stringify(kwargs.col)
    end
    -- quarto.log.output("col after: ", col)
    return pandoc.RawBlock(
      'html', 
      '<div class="column" style="width:2%;">' ..
      '<div class="column-divider" style="border-left: 1px solid ' .. 
      col .. 
      '; height: 65vh; margin: 0 auto; width: 0;">' .. 
      '</div></div>'
  )
  end
  return pandoc.Null()
end

return {
  ['column-divider'] = column_divider
}
