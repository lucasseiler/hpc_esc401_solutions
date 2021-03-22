# Solutions Exercise Session 04 #
## Exercise 1

In the `$HOME`directory, only the owner has read/write/execute rights. Group users and all other users do not have any rights.
In the `$SCRATCH`directory, the owner has full rights, while the group users have read and execute rights and the other users only have execute rights.
We cannot access another student's `$HOME`directory, but we can read their `$SCRATCH`directory and execute files from there.

When creating files in these directories, the permissions are set to read/write for the owner, and read for the group and other users.

I do not seem to have read rights for the directory of `/users/hlascomb`, because it is the $HOME directory of the user `hlascomb`, so I would also not be able to read nor write a file in that directory.

So that only the owner has (full) access, we would need to use the command `chmod 700 file`.

The rights of the file /scratch/snx3000/lseiler/group_read.txt are set to `-rwxr-----`.

I cannot do anything with a file with permissions set to 000, but I can use `chmod` to give myself (and others) the rights back.
