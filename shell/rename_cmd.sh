files=`find  /home/bob/Documents/self/Uservoicehtml/images -name *.JPG`
oldext="JPG"
newext="jpg"

for file in ${files}
do 
		echo $file
		name=$(ls $file | cut -d . -f 1)
		echo $name
		mv $file ${name}.$newext
done
