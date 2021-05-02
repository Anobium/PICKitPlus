Rev222.4

      Update database to make the 16LF1554 and 16LF1559.

      In comes down to this - these two chips have a non-standard DEVICEID and REVISION word not words. For some reason they have decided to have a word not words. So, DEVICEID has the suffix of the REVISION.

      16LF1554 - should be 0x2F00 but get returned as 2F20 where the 0x0020 is the revision. So, changing the database to 0x2F02 resolved ONLY that revision !

      So, I have looked. There are ONLY three revisions. 00,01,02 so, I am going to add parts called

      2F00, 2F01 and retain 2F02 - this means we do not have to change our software but the revision will always be zero. This is a workaround but there is NO justification to change our software to resolve this.


