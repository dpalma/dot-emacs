(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(require 'linum)
(add-hook 'find-file-hook (lambda() (linum-mode 1)))

(add-to-list 'load-path "~/.emacs.d/multiple-cursors/")
(require 'multiple-cursors)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(setq frame-title-format
      '("" invocation-name ": "(:eval (if (buffer-file-name)
                                          (abbreviate-file-name (buffer-file-name))
                                        "%b"))))
