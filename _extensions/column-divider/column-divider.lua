function column_divider(args, kwargs, meta)
  if quarto.doc.is_format("revealjs") then

    -- kwargs is a table of key value pairs, and doesn't have a length attribute.
    -- (can't check if empty by #kwargs == 0). Check individual keys instead.
    -- quarto.log.output("kwargsheightlen: ", #kwargs.height)
    -- quarto.log.output("kwargsheight: ", kwargs.height)
    local col = ""
    local height = "height: 60vh"
    if #kwargs.col > 0 then
      col = pandoc.utils.stringify(kwargs.col)
    end
    if #kwargs.height > 0 then
      height = pandoc.utils.stringify(kwargs.height)
    end
    -- quarto.log.output("height after: ", height)
    return pandoc.RawBlock(
      'html', 
      '<div class="column" style="width: 2%;">' ..
      '<div class="column-divider" style="border-left: 1px solid ' .. 
      col .. '; ' ..
      height .. '; ' ..
      'margin: 0 auto; width: 0;">' .. 
      '</div></div>'
  )
  end
  return pandoc.Null()
end

return {
  ['column-divider'] = column_divider
}
