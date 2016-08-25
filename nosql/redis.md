Install Redis Desktop Manager on Mac OSX: http://macappstore.org/rdm/ 

redis如何查看所有的key: keys *

HKEYS key #Returns all field names in the hash stored at key.

HGETALL key #Returns all fields and values of the hash stored at key. In the returned value, every field name is followed by its value, so the length of the reply is twice the size of the hash.

HSET key field value #Sets field in the hash stored at key to value. If key does not exist, a new key holding a hash is created. If field already exists in the hash, it is overwritten.

HGET key field #Returns the value associated with field in the hash stored at key.


