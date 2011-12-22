# VimRepress

This is a mirror of http://www.vim.org/scripts/script.php?script_id=3510

VimRepress is a plugin for managing wordpress blogs from vim. It is a rewrite of vimpress,
vimscript #1953, which has been broken for years.

## Requirements

   * Vim 7.3+ with python 2.6/2.7 support 
   * python-markdown/python-markdown2
   * WordPress 3.0.0+

## Configuration

      let VIMREPRESS = [{'username':'user',
                      \'password':'pass',
                      \'blog_url':'http://your-first-blog.com/'
                      \},
                      \{'username':'user',
                      \'blog_url':'http://your-second-blog.com/'
                      \}]

Hardcoding the password is optional. If a password is not provided the 
plugin will prompt for one the first time it's needed.

Wordpress categories are enabled for <C-x><C-u> autocompletion by default. If
you wish to enable tag autocompletion as well you can set this variable to
'true' in your ~/.vimrc. This may make the plugin load more slowly.

      let g:vimrepress_tags_completable = 'true'

## Command Examples

Some of the commands may have a special usage. The examples below might help clarify them for you.

      :BlogList             -  List 30 recent posts.
      :BlogList page        -  List 30 recent pages.
      :BlogList post 100    -  List 100 recent posts.

      :BlogNew post         -  Write an new post.
      :BlogNew page         -  Write an new page.

      :BlogSave             -  Save (defautely published.)
      :BlogSave draft       -  Save as draft.

      :BlogPreview local    -  Preview page/post locally in your browser.
      :BlogPreview publish  -  Same as `:BlogSave publish' with brower opened.

      :BlogOpen 679
      :BlogOpen http://your-first-blog.com/archives/679
      :BlogOpen http://your-second-blog.com/?p=679
      :BlogOpen http://your-third-blog.com/with-your-custom-permalink

For more detailed information about these commands, type :help vimrepress-commands

Developing Repository:  https://bitbucket.org/pentie/vimrepress
