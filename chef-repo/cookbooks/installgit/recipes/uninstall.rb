=begin
execute 'remove' do
   command "C:\\Git-2.10.2-64-bit.exe /SILENT"
end
=end
execute 'unstaill_git package' do
	command "uninstall_git"
end