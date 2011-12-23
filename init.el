(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)


(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages 
  '(starter-kit
    starter-kit-eshell
    starter-kit-js
    starter-kit-ruby
    ;; starter-kit-perl
    starter-kit-lisp
    starter-kit-bindings
    scpaste
    clojure-mode 
    clojure-test-mode
    clojure-project-mode
    markdown-mode yaml-mode
    tuareg marmalade oddmuse 
    color-theme-twilight
    javadoc-help
    color-theme-blackboard
    color-theme-complexity
    color-theme-dg
    color-theme-twilight
    project-mode
    csv-mode
    php-mode
    graphviz-dot-mode
    haskell-mode
;;    less-css-mode
    )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(load-theme 'manoj-dark)
;; (load-theme 'tango-dark)


;; load cedet

;; (load-file "~/.emacs.d/elpa/cedet-1.0/common/cedet.el")

;; (global-ede-mode 1)


(load-file "/Applications/factor/misc/fuel/fu.el")

