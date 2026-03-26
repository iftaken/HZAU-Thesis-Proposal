$pdf_mode = 1;      # 启用 PDF 模式
$postscript_mode = 0;
$dvi_mode = 0;

# 使用 tectonic 作为编译引擎
$pdflatex = 'tectonic -X compile %O %S';

# 或者如果你想编译指定文件（如 main.tex），可以用：
# $pdflatex = 'tectonic -X compile %S';
