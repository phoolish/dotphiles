# Add PBCopy (https://garywoodfine.com/use-pbcopy-on-ubuntu/)
if command -v xclip &> /dev/null; then
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
fi
