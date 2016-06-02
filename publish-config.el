;; config for publish site from org files
(require 'org-publish)

(setq org-publish-project-alist
      '(
        ;; These are the main web files
        ("org-notes"
         :base-directory "~/Blog/" ;; Change this to your local dir
         :publishing-directory "~/Blog/"
         :base-extension "org"
         :recursive t
         :publishing-function org-publish-org-to-html
			:auto-index t
			:index-filename "index.org"
			:index-title "index"
			:index-home "index.html"
         :section-numbers t
			:author "henry zhang"
         :email "andyrat@qq.com"
         :table-of-contents t
         ;:style "<link rel='stylesheet' type='text/css' href='css/org-manual.css' />"
			:style "<link href=\"http://thomasf.github.io/solarized-css/solarized-dark.min.css\" rel=\"stylesheet\"/>"
         :style-include-default nil
         )

        ;; These are static files (images, pdf, etc)
        ("org-static"
         :base-directory "~/Blog/";; Change this to your local dir
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|txt\\|asc"
         :publishing-directory "~/Blog/"
         :recursive t
         :publishing-function org-publish-attachment
         )

        ("org" :components ("org-notes" ));"org-static"))
        )
      )

(defun myweb-publish nil
  "Publish myweb."
  (interactive)
  (org-publish-all))

(myweb-publish)
