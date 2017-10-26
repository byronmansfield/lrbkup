(*

External Drive Auto Backup

AppleScript for prompting user to run a bash script via OSX dialog GUI
when a watched folder has a new item. Intended use is to prompt for
backup script to run when external drive is mounted

Written and maintained by: Byron Mansfield byron@byronmansfield.com

*)

-- trigger added items to folder
on adding folder items to this_folder after receiving added_items

  -- check if it is storage specifically
  if (added_items as string) contains "Storage" then

    -- prompt user with dialog to run backup or not
    set run_lrbkup to button returned of (display dialog "External hard drive Storage was mounted. Would you like to run lrbkup script?" buttons {"No", "Yes"} default button "Yes" with icon note)

    -- check if run backup script is yes else do nothing
    if run_lrbkup is "Yes" then

      -- open a fresh new window in iTerm2 and run lrbkup script
      tell application "iTerm2"
        set new_term to (create window with default profile)
        tell new_term
          tell the current session
            write text "lrbkup"
          end tell
        end tell
      end tell
    end if
  end if
end adding folder items to
