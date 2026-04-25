;;; powershell-mode.el --- Major mode for PowerShell -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Marcus Lundgren

;; Author: Marcus Lundgren <marcus.lundgren@gmail.com>
;; URL: https://github.com/marcus-lundgren/powershell-mode.el

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;; A major mode for PowerShell with syntax highlighting.

;;; Code:

(define-generic-mode 'powershell-mode
  ;; Comments
  '("#")
  ;; Keywords
  '("function" "param" "if" "else" "foreach" "for" "while" "switch"
    "return" "break" "continue" "try" "catch" "finally")
  ;; Font-lock patterns
  (list
   (cons
    (concat
     "\\b"
     (regexp-opt
      '("Add" "Clear" "Close" "Copy" "Enter" "Exit" "Find" "Format" "Get"
        "Hide" "Join" "Lock" "Move" "New" "Open" "Optimize" "Pop" "Push"
        "Redo" "Remove" "Rename" "Reset" "Resize" "Search" "Select" "Set"
        "Show" "Skip" "Split" "Step" "Switch" "Undo" "Unlock" "Watch"
        "Backup" "Checkpoint" "Compare" "Compress" "Convert" "ConvertFrom"
        "ConvertTo" "Dismount" "Edit" "Expand" "Export" "Group" "Import"
        "Initialize" "Limit" "Merge" "Mount" "Out" "Publish" "Restore"
        "Save" "Sync" "Unpublish" "Update" "Approve" "Assert" "Complete"
        "Confirm" "Deny" "Disable" "Enable" "Install" "Invoke" "Register"
        "Request" "Restart" "Resume" "Start" "Stop" "Submit" "Suspend"
        "Uninstall" "Unregister" "Wait" "Debug" "Measure" "Ping" "Repair"
        "Resolve" "Test" "Trace" "Connect" "Disconnect" "Read" "Receive"
        "Send" "Write" "Block" "Grant" "Protect" "Revoke" "Unblock"
        "Unprotect" "Use") t)
     "-[a-zA-Z0-9]+\\b")
    'font-lock-function-name-face)
   '("\\$[a-zA-Z0-9_]+" . font-lock-variable-name-face)
   '("<#\\(.\\|\n\\)*?#>" . font-lock-comment-face))
  ;; File patterns
  '("\\.ps1\\'" "\\.psm1\\'")
  ;; Additional stuff
  nil
  "A major mode for PowerShell scripts and modules.")

(provide 'powershell-mode)
;;; powershell-mode.el ends here
