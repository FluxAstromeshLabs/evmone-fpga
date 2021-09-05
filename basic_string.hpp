#include <string.h>

// custom basic string
template <typename T, unsigned N>
class fpga_basic_string {
private:
	mutable T array[N];
	int _size = 0;
public:
	fpga_basic_string(): _size(0) {}

//	fpga_basic_string(const T* a, int sz): _size(sz) {
//		// copy a to array
//		memcpy(&array, a, sz);
//	}

	fpga_basic_string(const T*& begin, const T* end){
		// copy a to array
		assign(begin, end);
	}

	void assign(const T* begin, const T* end) {
		memcpy(&array, begin, end-begin);
		_size = end-begin;
	}

	int size() { return _size; }

	const T& operator[](int idx) const{
		return array[idx];
	}
};
