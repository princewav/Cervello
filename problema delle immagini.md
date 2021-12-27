[How to encode image to send over Python HTTP server? - Stack Overflow](https://stackoverflow.com/questions/28567733/how-to-encode-image-to-send-over-python-http-server#:~:text=11-,For%20a%20PNG%20image,-you%20have%20to)

For a PNG image you have to set the content-type to "image/png". For jpg: "image/jpeg".

Other Content types can be found [here](http://www.freeformatter.com/mime-types-list.html).

Edit: Yes, I forgot about encoding in my first edit.

The answer is: You don't! When you load your image from a file, it is in the correct encoding already.

I read about your codec problem: The problem is, as much I see in your load function. Don't try to encode the file content.

You may use for binary data this:

```python
def load_binary(filename):
    with open(filename, 'rb') as file_handle:
        return file_handle.read()
```