const userService = require("../services/userService");
const { catchAsync } = require("../utils/error");

const kakaoSignIn = catchAsync(async (req, res) => {
  const kakaoToken = req.headers.authorization;
  const accessToken = await userService.kakaoSignIn(kakaoToken);

  return res.status(200).json({ accessToken: accessToken });
});

module.exports = {
  kakaoSignIn,
};