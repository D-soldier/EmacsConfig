(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages
   (quote
    (emmet-mode zencoding-mode yasnippet js2-mode highlight-parentheses auto-complete ace-jump-mode)))
 '(show-paren-mode t)
 '(transient-mark-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(autoload 'markdown-mode "markdown-mode"
	   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" .markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" .markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" .markdown-mode))
;; custom package list

;;修改js文件的主模式
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)

;;修改获取包的路径
(require 'package)
(add-to-list 'package-archives'
	     ("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

;;自动补全功能的添加
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete/dict")
(ac-config-default)

;;yasnippet config
(add-to-list 'load-path "~/path-to-yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;;ace-jump-mode
(add-to-list 'load-path "~/.emacs.d/elpa/ace-jump-mode-20140616.115")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; TAB to 4 space
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;;(add-to-list 'load-path "~/.emacs.d/elpa/zencoding-mode-20140213.22/")
;;(require 'zencoding-mode)
;;(add-hook 'sgml-mode-hook 'zencoding-mode)

;;emmet config
(add-to-list 'load-path "~/.emacs.d/elpa/emmet-mode-20160906.1919/")
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
