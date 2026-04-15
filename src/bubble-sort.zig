const std = @import("std");

/// Bubble sort the array in place
/// O(n^2) we use a swapped flag instead of two indices
pub fn bubbleSort(arr: []u8) void {
    var len = arr.len;
    var swapped = true;

    while (swapped and len > 0) {
        swapped = false;
        for (1..len) |i| {
            if (arr[i-1] > arr[i]) {
                const temp = arr[i];
                arr[i] = arr[i-1];
                arr[i-1] = temp;
                swapped = true;
            }
        }
        len -= 1;
    }
}

test "bubble sort" {
    var array = [_]u8{ 3, 1, 4, 7, 5, 9, 2 };
    var expectation = [_]u8{ 1, 2, 3, 4, 5, 7, 9 };

    bubbleSort(&array);

    try std.testing.expectEqualSlices(u8, &expectation, &array);
}
