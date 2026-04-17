const std = @import("std");

pub fn insertionSort(arr: []u8) void {
    for (1..arr.len) |i| {
        var j = i;
        while(j > 0 and arr[j] < arr[j-1]) {
            const temp = arr[j];
            arr[j] = arr[j-1];
            arr[j-1] = temp;
            j -= 1;
        }
    }
}

test "insertion sort" {
    var arr = [_]u8{ 3, 5, 2, 1, 4, 9, 7 };
    insertionSort(&arr);

    try std.testing.expectEqualSlices(u8, &.{ 1, 2, 3, 4, 5, 7, 9 }, &arr);
}
